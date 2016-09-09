.class Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V
    .locals 0

    .prologue
    .line 3108
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    iput-boolean p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    iget-object v0, v0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4202(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 3112
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    iget-boolean v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;->val$visible:Z

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->onDatePickerVisibilityChangeDone(Z)V
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$4500(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V

    .line 3113
    return-void
.end method
