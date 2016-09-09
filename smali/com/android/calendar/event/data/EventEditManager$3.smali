.class Lcom/android/calendar/event/data/EventEditManager$3;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/calendar/event/EventExtras;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/data/EventEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v2, v2, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/EditHelper;->getExtrasLoader(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/event/EventExtras;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;",
            "Lcom/android/calendar/event/EventExtras;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p2, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    .line 240
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$3;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    .line 241
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p2, Lcom/android/calendar/event/EventExtras;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditManager$3;->onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/event/EventExtras;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method
