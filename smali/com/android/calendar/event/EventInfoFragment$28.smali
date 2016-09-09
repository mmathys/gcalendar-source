.class Lcom/android/calendar/event/EventInfoFragment$28;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->monitorCalendarCache()V
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
    .line 3189
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$28;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$28;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->onEventsChanged()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$4500(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 3193
    return-void
.end method
