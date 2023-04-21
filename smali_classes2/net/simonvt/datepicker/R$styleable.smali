.class public final Lnet/simonvt/datepicker/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/datepicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CalendarView:[I

.field public static final CalendarView_cv_dateTextAppearance:I = 0x0

.field public static final CalendarView_cv_dividerHorizontal:I = 0x1

.field public static final CalendarView_cv_firstDayOfWeek:I = 0x2

.field public static final CalendarView_cv_focusedMonthDateColor:I = 0x3

.field public static final CalendarView_cv_maxDate:I = 0x4

.field public static final CalendarView_cv_minDate:I = 0x5

.field public static final CalendarView_cv_selectedDateVerticalBar:I = 0x6

.field public static final CalendarView_cv_selectedWeekBackgroundColor:I = 0x7

.field public static final CalendarView_cv_showWeekNumber:I = 0x8

.field public static final CalendarView_cv_shownWeekCount:I = 0x9

.field public static final CalendarView_cv_unfocusedMonthDateColor:I = 0xa

.field public static final CalendarView_cv_weekDayTextAppearance:I = 0xb

.field public static final CalendarView_cv_weekNumberColor:I = 0xc

.field public static final CalendarView_cv_weekSeparatorLineColor:I = 0xd

.field public static final DatePicker:[I

.field public static final DatePicker_dp_calendarViewShown:I = 0x0

.field public static final DatePicker_dp_endYear:I = 0x1

.field public static final DatePicker_dp_internalLayout:I = 0x2

.field public static final DatePicker_dp_maxDate:I = 0x3

.field public static final DatePicker_dp_minDate:I = 0x4

.field public static final DatePicker_dp_spinnersShown:I = 0x5

.field public static final DatePicker_dp_startYear:I = 0x6

.field public static final NumberPicker:[I

.field public static final NumberPicker_internalLayout:I = 0x0

.field public static final NumberPicker_internalMaxHeight:I = 0x1

.field public static final NumberPicker_internalMaxWidth:I = 0x2

.field public static final NumberPicker_internalMinHeight:I = 0x3

.field public static final NumberPicker_internalMinWidth:I = 0x4

.field public static final NumberPicker_selectionDivider:I = 0x5

.field public static final NumberPicker_selectionDividerHeight:I = 0x6

.field public static final NumberPicker_selectionDividersDistance:I = 0x7

.field public static final NumberPicker_solidColor:I = 0x8

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9

.field public static final TextAppearanceCompatStyleable:[I

.field public static final TextAppearanceCompatStyleable_android_textSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/datepicker/R$styleable;->CalendarView:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/simonvt/datepicker/R$styleable;->DatePicker:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/simonvt/datepicker/R$styleable;->NumberPicker:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010095

    aput v2, v0, v1

    sput-object v0, Lnet/simonvt/datepicker/R$styleable;->TextAppearanceCompatStyleable:[I

    return-void

    :array_0
    .array-data 4
        0x7f040145
        0x7f040146
        0x7f040147
        0x7f040148
        0x7f040149
        0x7f04014a
        0x7f04014b
        0x7f04014c
        0x7f04014d
        0x7f04014e
        0x7f04014f
        0x7f040150
        0x7f040151
        0x7f040152
    .end array-data

    :array_1
    .array-data 4
        0x7f04016a
        0x7f04016b
        0x7f04016c
        0x7f04016d
        0x7f04016e
        0x7f04016f
        0x7f040170
    .end array-data

    :array_2
    .array-data 4
        0x7f04021e
        0x7f04021f
        0x7f040220
        0x7f040221
        0x7f040222
        0x7f04035c
        0x7f04035d
        0x7f04035e
        0x7f04037a
        0x7f040440
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
