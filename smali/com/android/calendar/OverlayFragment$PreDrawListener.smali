.class public Lcom/android/calendar/OverlayFragment$PreDrawListener;
.super Ljava/lang/Object;
.source "OverlayFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/OverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreDrawListener"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/View;

.field public final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/OverlayFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mContentView:Landroid/view/View;

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mReference:Ljava/lang/ref/WeakReference;

    .line 375
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    .line 387
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/OverlayFragment;->onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 396
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$PreDrawListener;->mContentView:Landroid/view/View;

    .line 398
    :cond_1
    return-void
.end method
