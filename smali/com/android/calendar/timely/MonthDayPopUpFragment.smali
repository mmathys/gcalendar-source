.class public Lcom/android/calendar/timely/MonthDayPopUpFragment;
.super Lcom/android/calendar/timely/DayPopUpFragment;
.source "MonthDayPopUpFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDayData:Lcom/android/calendar/timely/MonthData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/calendar/timely/MonthDayPopUpFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/calendar/timely/DayPopUpFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/DayPopUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthDayPopUpFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "data_factory"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 32
    iget v2, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mJulianDay:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayData:Lcom/android/calendar/timely/MonthData;

    .line 33
    iget-object v0, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    iget v2, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mJulianDay:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->setJulianDay(I)V

    .line 36
    iget-object v0, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    iget-object v2, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayData:Lcom/android/calendar/timely/MonthData;

    iget v3, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mJulianDay:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayData:Lcom/android/calendar/timely/MonthData;

    iget v2, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mJulianDay:I

    iget-object v3, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 41
    return-object v1
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mDayData:Lcom/android/calendar/timely/MonthData;

    iget v1, p0, Lcom/android/calendar/timely/MonthDayPopUpFragment;->mJulianDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/MonthData;->hasData(I)Z

    move-result v0

    return v0
.end method
