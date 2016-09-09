.class Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2$1;
.super Ljava/lang/Object;
.source "TaskAssistEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;->onChange(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2$1;->this$1:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2$1;->this$1:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;

    iget-object v0, v0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetTaskAssistance()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->access$300(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V

    .line 54
    return-void
.end method
