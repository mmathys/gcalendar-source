.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$2$1;
.super Ljava/lang/Object;
.source "TimelyEventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->onFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2$1;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2$1;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;

    iget-object v0, v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->doDismissScreen()V

    .line 691
    return-void
.end method
