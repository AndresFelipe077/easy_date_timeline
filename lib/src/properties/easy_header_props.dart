import 'package:flutter/material.dart' show TextStyle, EdgeInsets;

class EasyHeaderProps {
  const EasyHeaderProps({
    this.showHeader = true,
    this.showSelectedDate = true,
    this.showSelectedMonth = false,
    this.showMonthPicker = true,
    this.centerHeader = false,
    this.selectedDateFormat = SelectedDateFormat.dayOnly,
    this.selectedMonthFormat = SelectedMonthFormat.monthOnly,
    this.monthPickerType = MonthPickerType.dropDown,
    this.selectedDateStyle,
    this.selectedMonthStyle,
    this.monthStyle,
    this.padding,
  });

  /// Whether to show the header of the date timeline widget.
  final bool showHeader;

  /// Whether to show the selected date in the header of the date timeline widget.
  final bool showSelectedDate;

  /// Whether to show the selected month in the header of the date timeline widget.
  final bool showSelectedMonth;

  /// Whether to show the month picker at the top of the date timeline widget.
  final bool showMonthPicker;

  /// Whether to center the header of the calendar widget.
  final bool centerHeader;

  /// The format used to display the selected date in the header of the date timeline widget.
  final SelectedDateFormat selectedDateFormat;

  /// The format used to display the selected month in the header of the date timeline widget.
  final SelectedMonthFormat selectedMonthFormat;

  /// The type of month picker to use if [showMonthPicker] is true.
  final MonthPickerType monthPickerType;

  /// The text style applied to the selected date string in the header of the date timeline widget.
  final TextStyle? selectedDateStyle;

  /// The text style applied to the selected month string in the header of the month timeline widget.
  final TextStyle? selectedMonthStyle;

  /// The text style applied to the month string in the header of the date timeline widget.
  final TextStyle? monthStyle;

  /// The padding applied to the date timeline widget headers.
  final EdgeInsets? padding;
}

enum SelectedDateFormat {
  /// Show only the selected day as:"Sunday"
  dayOnly("EEEE"),

  /// Show only the selected month as:"June"
  monthOnly("MMMM"),

  /// Show the data as:"11/06/2023"
  fullDateDMY("dd/MM/yyyy"),

  /// Show the data as:"06/11/2023"
  fullDateMDY("MM/dd/yyyy"),

  /// Show the data as:"Sunday 6,2023"
  fullDateDayAsStrMY("EEEE M,y"),

  /// Show the data as:"11 June,2023"
  fullDateDMonthAsStrY("d MMMM, yyyy"),

  /// Show the data as:"June 11,2023"
  fullDateMonthAsStrDY("MMMM d, yyyy");

  const SelectedDateFormat(this.formatter);
  final String formatter;
}

enum SelectedMonthFormat {
  /// Show only the selected month as:"June"
  monthOnly("MMMM"),

  /// Show the data as:"June 2023"
  fullMonthAsStrY("MMMM yyyy");

  const SelectedMonthFormat(this.formatter);
  final String formatter;
}

enum MonthPickerType {
  dropDown,
  switcher,
}
