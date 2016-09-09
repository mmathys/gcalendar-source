.class public Lcom/android/calendar/widget/WidgetRow$WeekDivider;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WeekDivider"
.end annotation


# instance fields
.field private final mContentDescription:Ljava/lang/String;

.field private final mWeekLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/DateTimeFormatHelper;Ljava/util/Calendar;Lcom/android/calendar/time/Time;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 304
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    .line 306
    const/4 v0, 0x3

    new-array v1, v0, [I

    invoke-virtual {p2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, v1, v7

    .line 307
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, v1, v6

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aput v0, v1, v2

    .line 309
    const/4 v0, -0x1

    .line 311
    if-eqz p4, :cond_0

    .line 312
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p3, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 313
    const/4 v2, 0x7

    .line 314
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/datetimepicker/Utils;->convertDayOfWeekFromCalendarToTime(I)I

    move-result v2

    .line 316
    invoke-static {v0, v2}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    .line 321
    :cond_0
    invoke-virtual {p1, v1, v7, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;->mWeekLabel:Ljava/lang/String;

    .line 322
    invoke-virtual {p1, v1, v6, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;->mContentDescription:Ljava/lang/String;

    .line 323
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget v0, Lcom/android/calendar/R$layout;->widget_empty_row:I

    .line 327
    :goto_0
    return v0

    .line 329
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_week_header:I

    goto :goto_0
.end method

.method public updateTextView(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$layout;->widget_week_header:I

    if-ne v0, v1, :cond_0

    .line 334
    sget v0, Lcom/android/calendar/R$id;->widget_week_date:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 335
    sget v0, Lcom/android/calendar/R$id;->widget_week_date:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;->mWeekLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    sget v0, Lcom/android/calendar/R$id;->widget_week_date:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$WeekDivider;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method
