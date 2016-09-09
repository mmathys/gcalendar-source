.class Lcom/android/calendar/timely/gridviews/GridDayView$1;
.super Ljava/lang/Object;
.source "GridDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridDayView;->updateCreateNewEventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridDayView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->access$000(Lcom/android/calendar/timely/gridviews/GridDayView;)Lcom/android/calendar/timely/CreateNewEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->requestFocus()Z

    .line 261
    return-void
.end method
