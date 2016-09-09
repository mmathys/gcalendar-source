.class Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener$1;
.super Ljava/lang/Object;
.source "CreateNewEventView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener$1;->this$1:Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 143
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 144
    return-void
.end method
