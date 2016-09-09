.class Lcom/android/calendar/event/data/EventEditManager$2;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/data/EventEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$2;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModificationCancelled()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$2;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->notifyAboutSaveInterruption()V

    .line 221
    return-void
.end method

.method public onModificationSelected(I)V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$2;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$2;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 215
    :cond_0
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$2;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;-><init>(Lcom/android/calendar/event/data/AbstractEditManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    return-void
.end method
