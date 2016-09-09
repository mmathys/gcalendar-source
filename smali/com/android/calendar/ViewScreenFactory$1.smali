.class final Lcom/android/calendar/ViewScreenFactory$1;
.super Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;
.source "ViewScreenFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEvent(Lcom/android/calendar/ViewScreenFactory$Arguments;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;


# direct methods
.method constructor <init>(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/calendar/ViewScreenFactory$1;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/ViewScreenFactory$ItemResolverTask;-><init>(Lcom/android/calendar/ViewScreenFactory$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/ViewScreenFactory$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/ViewScreenFactory$1;->val$args:Lcom/android/calendar/ViewScreenFactory$Arguments;

    # invokes: Lcom/android/calendar/ViewScreenFactory;->onNewViewScreenCompatibleTimelineEventWithResolveResult(Lcom/android/calendar/ViewScreenFactory$Arguments;)V
    invoke-static {v0}, Lcom/android/calendar/ViewScreenFactory;->access$300(Lcom/android/calendar/ViewScreenFactory$Arguments;)V

    .line 235
    return-void
.end method
