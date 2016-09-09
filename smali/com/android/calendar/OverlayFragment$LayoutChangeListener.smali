.class public Lcom/android/calendar/OverlayFragment$LayoutChangeListener;
.super Ljava/lang/Object;
.source "OverlayFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/OverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChangeListener"
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
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mContentView:Landroid/view/View;

    .line 340
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mReference:Ljava/lang/ref/WeakReference;

    .line 341
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    .line 350
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/OverlayFragment;->onGlobalLayout(Landroid/view/View;Lcom/android/calendar/OverlayFragment$LayoutChangeListener;)V

    .line 353
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mContentView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/OverlayFragment$LayoutChangeListener;->mContentView:Landroid/view/View;

    .line 360
    :cond_0
    return-void
.end method
