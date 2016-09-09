.class Lcom/android/calendar/event/EventInfoFragment$30;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->loadNewEventException(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 3239
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$30;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3242
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$30;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->onEventsChanged()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$4500(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 3243
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$30;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    .line 3244
    return-void
.end method
