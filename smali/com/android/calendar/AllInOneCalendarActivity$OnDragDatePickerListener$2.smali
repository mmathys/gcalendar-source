.class Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->tryInitialize(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V
    .locals 0

    .prologue
    .line 2963
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$2;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 2967
    if-nez p1, :cond_0

    .line 2968
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$2;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->recalculateDatePickerHeight()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$3900(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V

    .line 2970
    :cond_0
    return-void
.end method
