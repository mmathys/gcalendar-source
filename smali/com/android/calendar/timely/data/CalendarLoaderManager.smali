.class public Lcom/android/calendar/timely/data/CalendarLoaderManager;
.super Ljava/lang/Object;
.source "CalendarLoaderManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;
    }
.end annotation


# instance fields
.field private mCreated:Z

.field private mLoaderCallbacksList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LoaderManager$LoaderCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/LoaderManager$LoaderCallbacks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mStarted:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaderCallbacksList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/calendar/timely/data/CalendarLoaderManager$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/data/CalendarLoaderManager;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public createLoaders()V
    .locals 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mCreated:Z

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mCreated:Z

    .line 50
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaderCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaderCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManager$LoaderCallbacks;

    .line 53
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0, v1, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 56
    iget-object v2, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public destroyLoaders()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 91
    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaderCallbacksList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public startLoaders()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mStarted:Z

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mStarted:Z

    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 72
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    goto :goto_0
.end method

.method public stopLoaders()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 81
    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/data/CalendarLoaderManager;->mStarted:Z

    .line 84
    return-void
.end method
