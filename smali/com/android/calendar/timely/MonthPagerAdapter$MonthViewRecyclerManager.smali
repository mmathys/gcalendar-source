.class Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;
.super Ljava/lang/Object;
.source "MonthPagerAdapter.java"

# interfaces
.implements Lcom/android/calendar/timely/Recycler$RecyclerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/MonthPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewRecyclerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/Recycler$RecyclerManager",
        "<",
        "Lcom/android/calendar/timely/CalendarMonthView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/MonthPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/MonthPagerAdapter;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;->this$0:Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/MonthPagerAdapter;Lcom/android/calendar/timely/MonthPagerAdapter$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;-><init>(Lcom/android/calendar/timely/MonthPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public clean(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/calendar/timely/CalendarMonthView;->cleanAfterUse()V

    .line 145
    return-void
.end method

.method public bridge synthetic clean(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;->clean(Lcom/android/calendar/timely/CalendarMonthView;)V

    return-void
.end method

.method public createObject()Lcom/android/calendar/timely/CalendarMonthView;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;->this$0:Lcom/android/calendar/timely/MonthPagerAdapter;

    # getter for: Lcom/android/calendar/timely/MonthPagerAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->access$200(Lcom/android/calendar/timely/MonthPagerAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->timely_month_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CalendarMonthView;

    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;->createObject()Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v0

    return-object v0
.end method

.method public prepareToReuse(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/android/calendar/timely/CalendarMonthView;->reuse()V

    .line 134
    return-void
.end method

.method public bridge synthetic prepareToReuse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;->prepareToReuse(Lcom/android/calendar/timely/CalendarMonthView;)V

    return-void
.end method
