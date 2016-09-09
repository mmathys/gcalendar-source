.class public abstract Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 4672
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finishLoader(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4681
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 4682
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 4683
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/EventInfoFragment;->onQueryComplete(I)V

    .line 4684
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4691
    return-void
.end method
