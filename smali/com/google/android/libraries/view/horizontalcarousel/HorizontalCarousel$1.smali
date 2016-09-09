.class Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "HorizontalCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 40
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 41
    :goto_0
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    .line 42
    if-eqz v0, :cond_4

    .line 43
    if-nez v3, :cond_1

    if-ne v4, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$100(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    .line 45
    :cond_1
    if-nez v3, :cond_2

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$200(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 47
    :cond_2
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$100(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$200(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 53
    :cond_4
    if-nez v3, :cond_5

    if-ne v4, v1, :cond_5

    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$100(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 55
    :cond_5
    if-nez v3, :cond_6

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$200(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 57
    :cond_6
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_7

    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$100(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 60
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I
    invoke-static {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$200(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v0

    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method
