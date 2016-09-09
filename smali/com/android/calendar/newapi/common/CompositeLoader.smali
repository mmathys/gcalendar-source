.class public Lcom/android/calendar/newapi/common/CompositeLoader;
.super Ljava/lang/Object;
.source "CompositeLoader.java"

# interfaces
.implements Lcom/android/calendar/newapi/common/Loader;
.implements Lcom/android/calendar/newapi/common/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/calendar/newapi/common/Loader",
        "<TResultT;>;",
        "Lcom/android/calendar/newapi/common/Loader$Callback;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

.field private mLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLoader(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/common/Loader;

    .line 38
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/calendar/newapi/common/Loader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 39
    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->cancel()V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/common/Loader;

    .line 56
    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFinishedSuccessfully()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/common/Loader;

    .line 46
    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/common/Loader;

    .line 30
    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 31
    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->load()V

    goto :goto_0
.end method

.method public onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mSuccess:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;->cancel()V

    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader$Callback;->onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mSuccess:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader$Callback;->onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/newapi/common/CompositeLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    .line 70
    return-void
.end method
