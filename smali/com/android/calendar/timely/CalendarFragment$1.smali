.class Lcom/android/calendar/timely/CalendarFragment$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/CalendarFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasDragging:Z

.field final synthetic this$0:Lcom/android/calendar/timely/CalendarFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/CalendarFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/calendar/timely/CalendarFragment$1;->this$0:Lcom/android/calendar/timely/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 230
    if-ne p1, v0, :cond_1

    .line 232
    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment$1;->mWasDragging:Z

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment$1;->mWasDragging:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment$1;->mWasDragging:Z

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment$1;->this$0:Lcom/android/calendar/timely/CalendarFragment;

    iget-object v0, v0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentItem()I

    move-result v0

    .line 236
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getDayFromPosition(I)Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v1

    .line 238
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment$1;->this$0:Lcom/android/calendar/timely/CalendarFragment;

    iget-object v0, v0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 240
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 244
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment$1;->this$0:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/CalendarFragment;->onDayOfMonthSelected(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method
