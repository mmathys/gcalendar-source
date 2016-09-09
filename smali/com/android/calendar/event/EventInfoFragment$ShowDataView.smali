.class Lcom/android/calendar/event/EventInfoFragment$ShowDataView;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowDataView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$1;)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    return-void
.end method


# virtual methods
.method public onFadeInDataView()V
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$400(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    .line 947
    return-void
.end method

.method public onShowDataView()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$ShowDataView;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$400(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    .line 952
    return-void
.end method
