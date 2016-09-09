.class Lcom/android/calendar/timely/TimelyDayView$6;
.super Ljava/lang/Object;
.source "TimelyDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayView;->installCreateEventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 0

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$6;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$6;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyDayView;->access$500(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/CreateNewEventView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->requestFocus()Z

    .line 1832
    return-void
.end method
