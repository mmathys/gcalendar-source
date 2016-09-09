.class public Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
.super Ljava/lang/Object;
.source "PagedScrollView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/PagedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollManager"
.end annotation


# instance fields
.field private mHandleLayoutChanges:Z

.field private mIsScaleInProgress:Z

.field private mScrollViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/PagedScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalScrollPositionFromBottom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;-><init>(Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mScrollViews:Ljava/util/ArrayList;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    .line 190
    iput-boolean p1, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mHandleLayoutChanges:Z

    .line 191
    return-void
.end method


# virtual methods
.method public add(Lcom/android/calendar/timely/PagedScrollView;)V
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/timely/PagedScrollView;->setVerticalScrollPositionFromBottom(IZ)V

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mHandleLayoutChanges:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/PagedScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 200
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/PagedScrollView;->setOnVerticalScrollManager(Lcom/android/calendar/timely/PagedScrollView$ScrollManager;)V

    .line 201
    return-void
.end method

.method public isScaleInProgress()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mIsScaleInProgress:Z

    return v0
.end method

.method public notifyListeners()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->notifyListeners(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method public notifyListeners(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    .line 226
    if-eq v0, p1, :cond_0

    .line 227
    iget v2, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/PagedScrollView;->setVerticalScrollPositionFromBottom(IZ)V

    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lcom/android/calendar/timely/PagedScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(Lcom/android/calendar/timely/PagedScrollView;Z)V

    .line 242
    return-void
.end method

.method public onVerticalScrollChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    if-ne p2, v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iput p2, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->notifyListeners(Landroid/view/View;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/calendar/timely/PagedScrollView;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mHandleLayoutChanges:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/PagedScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedScrollView;->removeOnVerticalScrollManager()V

    .line 209
    return-void
.end method

.method public setIsScaleInProgress(Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mIsScaleInProgress:Z

    .line 251
    return-void
.end method

.method public updateViewScrollPosition(I)V
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->notifyListeners()V

    .line 247
    return-void
.end method

.method public updateViewScrollPosition(Lcom/android/calendar/timely/PagedScrollView;Z)V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->mVerticalScrollPositionFromBottom:I

    invoke-virtual {p1, v0, p2}, Lcom/android/calendar/timely/PagedScrollView;->setVerticalScrollPositionFromBottom(IZ)V

    .line 236
    return-void
.end method
