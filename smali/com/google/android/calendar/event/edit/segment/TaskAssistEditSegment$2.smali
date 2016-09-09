.class Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;
.super Ljava/lang/Object;
.source "TaskAssistEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;

    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;->onChange(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)V

    return-void
.end method
