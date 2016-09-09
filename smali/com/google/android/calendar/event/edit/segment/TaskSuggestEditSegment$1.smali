.class Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;
.super Ljava/lang/Object;
.source "TaskSuggestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;
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
        "Lcom/google/calendar/v2/client/service/api/common/AccountKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;->this$0:Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;

    # invokes: Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->onAccountChanged()V
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;->access$000(Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment;)V

    .line 83
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskSuggestEditSegment$1;->onChange(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V

    return-void
.end method
