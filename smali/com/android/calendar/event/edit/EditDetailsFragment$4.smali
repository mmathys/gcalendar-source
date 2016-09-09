.class Lcom/android/calendar/event/edit/EditDetailsFragment$4;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
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
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 6

    .prologue
    .line 276
    invoke-static {p1}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    .line 278
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/graphics/Point;

    move-result-object v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 282
    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 283
    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v4}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 281
    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;
    invoke-static {v1, v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$902(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 290
    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 291
    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    .line 293
    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v5}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 289
    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 295
    new-instance v2, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment$4;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 313
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 317
    :goto_1
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleCoords:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method
