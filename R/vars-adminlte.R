
#' @title AdminLTE CSS colors variables
#'
#' @description Those variables can be used to customize
#'  defaults colors in {shinydashboard}.
#'
#' @param light_blue Light blue (primary status), default to \code{#3c8dbc}.
#' @param red Red (danger status), default to \code{#dd4b39}.
#' @param green Green (success status), default to \code{#00a65a}.
#' @param aqua Aqua (info status), default to \code{#00c0ef}.
#' @param yellow Yellow (warning status), default to \code{#f39c12}.
#' @param blue Blue, default to \code{#0073b7}.
#' @param navy Navy, default to \code{#001F3F}.
#' @param teal Teal, default to \code{#39CCCC}.
#' @param olive Olive, default to \code{#3D9970}.
#' @param lime Lime, default to \code{#01FF70}.
#' @param orange Orange, default to \code{#FF851B}.
#' @param fuchsia Fuchsia, default to \code{#F012BE}.
#' @param purple Purple, default to \code{#605ca8}.
#' @param maroon Maroon, default to \code{#D81B60}.
#' @param black Black, default to \code{#111}.
#' @param gray_lte Gray, default to \code{#d2d6de}.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#'
#' adminlte_color(
#'   light_blue = "#086A87",
#'   aqua = "#A9D0F5",
#'   green = "#0B3B0B",
#'   purple = "#610B4B"
#' )
#'
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'
#'   ui <- dashboardPage(
#'     header = dashboardHeader(title = "My dashboard"),
#'     sidebar = dashboardSidebar(
#'       sidebarMenu(
#'         menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard"))
#'       )
#'     ),
#'     body = dashboardBody(
#'
#'       use_theme(create_theme(
#'         adminlte_color(
#'           light_blue = "#086A87",
#'           aqua = "#A9D0F5",
#'           green = "#0B3B0B",
#'           purple = "#610B4B"
#'         )
#'       )),
#'
#'       tabItems(
#'         tabItem(
#'           "dashboard",
#'
#'           # infoBoxes
#'           fluidRow(
#'             infoBox(
#'               "Orders", uiOutput("orderNum2"), "Subtitle", icon = icon("credit-card")
#'             ),
#'             infoBox(
#'               "Approval Rating", "60%", icon = icon("line-chart"), color = "green",
#'               fill = TRUE
#'             ),
#'             infoBox(
#'               "Progress", "20%", icon = icon("users"), color = "purple"
#'             )
#'           ),
#'
#'           # valueBoxes
#'           fluidRow(
#'             valueBox(
#'               5846, "New Orders", icon = icon("credit-card"),
#'               href = "http://google.com"
#'             ),
#'             valueBox(
#'               tagList("60", tags$sup(style="font-size: 20px", "%")),
#'               "Approval Rating", icon = icon("line-chart"), color = "green"
#'             ),
#'             valueBox(
#'               "42%", "Progress", icon = icon("users"), color = "purple"
#'             )
#'
#'           )
#'         )
#'       )
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
adminlte_color <- function(light_blue = NULL,
                           red = NULL,
                           green = NULL,
                           aqua = NULL,
                           yellow = NULL,
                           blue = NULL,
                           navy = NULL,
                           teal = NULL,
                           olive = NULL,
                           lime = NULL,
                           orange = NULL,
                           fuchsia = NULL,
                           purple = NULL,
                           maroon = NULL,
                           black = NULL,
                           gray_lte = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "adminlte_vars", class(vars))
  vars
}





#' @title AdminLTE CSS sidebar variables
#'
#' @description Those variables can be used to customize
#'  the sidebar in {shinydashboard}.
#'
#' @param width Side bar width, default to \code{230px}.
#' @param dark_bg Background color (dark mode).
#' @param dark_hover_bg Background hover color (dark mode).
#' @param dark_color Text color (dark mode).
#' @param dark_hover_color Text hover color (dark mode).
#' @param dark_submenu_bg Background sub-menu color (dark mode).
#' @param dark_submenu_color Text sub-menu color (dark mode).
#' @param dark_submenu_hover_color Text sub-menu hover color (dark mode).
#' @param light_bg Background color (light mode).
#' @param light_hover_bg Background hover color (light mode).
#' @param light_color Text color (light mode).
#' @param light_hover_color Text hover color (light mode).
#' @param light_submenu_bg Background sub-menu color (light mode).
#' @param light_submenu_color Text sub-menu color (light mode).
#' @param light_submenu_hover_color Text sub-menu hover color (light mode).
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'
#'   ui <- dashboardPage(
#'     header = dashboardHeader(title = "My dashboard"),
#'     sidebar = dashboardSidebar(
#'       sidebarMenu(
#'         menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
#'         menuItem("Widgets", icon = icon("th"), tabName = "widgets", badgeLabel = "new",
#'                  badgeColor = "green"),
#'         menuItem("Charts", icon = icon("bar-chart-o"),
#'                  menuSubItem("Sub-item 1", tabName = "subitem1"),
#'                  menuSubItem("Sub-item 2", tabName = "subitem2")
#'         )
#'       )
#'     ),
#'     body = dashboardBody(
#'
#'       use_theme(create_theme(
#'         adminlte_sidebar(
#'           dark_bg = "#F5A9A9",
#'           dark_hover_bg = "#8A0808"
#'         )
#'       ))
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
adminlte_sidebar <- function(width = NULL,
                             dark_bg = NULL,
                             dark_hover_bg = NULL,
                             dark_color = NULL,
                             dark_hover_color = NULL,
                             dark_submenu_bg = NULL,
                             dark_submenu_color = NULL,
                             dark_submenu_hover_color = NULL,
                             light_bg = NULL,
                             light_hover_bg = NULL,
                             light_color = NULL,
                             light_hover_color = NULL,
                             light_submenu_bg = NULL,
                             light_submenu_color = NULL,
                             light_submenu_hover_color = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars, prefix = "sidebar")
  class(vars) <- c("fresh_sass_vars", "adminlte_vars", class(vars))
  vars
}



#' @title AdminLTE CSS global variables
#'
#' @description Those variables can be used to customize
#'  global settings in {shinydashboard}.
#'
#' @param content_bg Background color of the body.
#'
#' @return a \code{list} that can be used in \code{\link{create_theme}}.
#' @export
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinydashboard)
#'
#'   ui <- dashboardPage(
#'     header = dashboardHeader(title = "My dashboard"),
#'     sidebar = dashboardSidebar(),
#'     body = dashboardBody(
#'
#'       use_theme(create_theme(
#'         adminlte_global(
#'           content_bg = "#FAAC58"
#'         )
#'       ))
#'     )
#'   )
#'
#'   server <- function(input, output, session) {
#'
#'   }
#'
#'   shinyApp(ui, server)
#' }
adminlte_global <- function(content_bg = NULL) {
  vars <- as.list(environment())
  vars <- dropNulls(vars)
  vars <- vars_names(vars)
  class(vars) <- c("fresh_sass_vars", "adminlte_vars", class(vars))
  vars
}





