.class public abstract Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HorizontalCarouselAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private horizontalCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

.field private onCarouselTileClickListener:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$1;-><init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;)V

    iput-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onCarouselTileClickListener:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract getItemForPosition(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 116
    check-cast p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    iput-object p1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->horizontalCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 117
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onInternalBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V

    .line 88
    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/google/android/libraries/view/horizontalcarousel/R$id;->do_not_set_click_listener_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->horizontalCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 123
    return-void
.end method

.method protected abstract onInternalBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V
.end method

.method protected resetHorizontalCarousel()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->notifyDataSetChanged()V

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->horizontalCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->horizontalCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->scrollToPosition(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;->onCarouselTileClickListener:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;

    .line 77
    return-void
.end method
