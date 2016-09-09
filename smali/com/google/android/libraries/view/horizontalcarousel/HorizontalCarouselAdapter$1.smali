.class Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;
.super Ljava/lang/Object;
.source "HorizontalCarouselAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 58
    sget v0, Lcom/google/android/libraries/view/horizontalcarousel/R$id;->carousel_view_holder_tag:I

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->getPosition()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onCarouselTileClickListener:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;

    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onCarouselTileClickListener:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;
    invoke-static {v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->getItemForPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;->onCarouselTileClick(Landroid/view/View;Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onCarouselTileClickListener is null for position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ViewHolder is null for view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
