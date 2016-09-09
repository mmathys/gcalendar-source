.class Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$moveArrow:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V
    .locals 0

    .prologue
    .line 3084
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    iput-boolean p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;->val$moveArrow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 3087
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3088
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-boolean v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;->val$moveArrow:Z

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerBottom(FZ)V
    invoke-static {v1, v0, v2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->access$4300(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;FZ)V

    .line 3089
    return-void
.end method
