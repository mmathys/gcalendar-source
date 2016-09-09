.class Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;-><init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

.field final synthetic val$this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 2826
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$1;->this$1:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$1;->val$this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2829
    const/4 v0, 0x1

    return v0
.end method
