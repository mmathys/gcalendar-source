.class Lcom/android/calendar/widget/WidgetRow$DayInfo;
.super Ljava/lang/Object;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayInfo"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field public final mIsToday:Z

.field public final mJulianDay:I

.field public final mMonthDayLabel:Ljava/lang/String;

.field public final mWeekdayLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 4

    .prologue
    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput p2, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mJulianDay:I

    .line 918
    invoke-virtual {p3, p2}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 919
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p3, Lcom/android/calendar/time/Time;->monthDay:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {p3}, Lcom/android/calendar/widget/WidgetUtils;->getMediumDayOfWeekString(Lcom/android/calendar/time/Time;)Ljava/lang/String;

    move-result-object v1

    .line 921
    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mMonthDayLabel:Ljava/lang/String;

    .line 922
    iput-object v1, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mWeekdayLabel:Ljava/lang/String;

    .line 923
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mIsToday:Z

    .line 924
    invoke-virtual {p4, p2, p3, p1}, Lcom/android/calendar/DateTimeFormatHelper;->getWidgetDayDividerText(ILcom/android/calendar/time/Time;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mDescription:Ljava/lang/String;

    .line 925
    return-void

    .line 923
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 931
    sget v0, Lcom/android/calendar/R$id;->widget_day_month_day:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mMonthDayLabel:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 932
    sget v0, Lcom/android/calendar/R$id;->widget_day_weekday:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mWeekdayLabel:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 933
    iget-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mIsToday:Z

    if-eqz v0, :cond_0

    .line 934
    sget v0, Lcom/android/calendar/R$id;->widget_day_month_day:I

    iget v1, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mFirstDayColor:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 935
    sget v0, Lcom/android/calendar/R$id;->widget_day_weekday:I

    iget v1, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mFirstDayColor:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 940
    :goto_0
    sget v0, Lcom/android/calendar/R$id;->widget_day_column:I

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$DayInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 941
    return-void

    .line 937
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->widget_day_month_day:I

    iget v1, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDarkDayColor:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 938
    sget v0, Lcom/android/calendar/R$id;->widget_day_weekday:I

    iget v1, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mLightDayColor:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0
.end method
