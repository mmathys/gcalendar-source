.class Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TimeZoneFilterTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field filterType:I

.field str:Ljava/lang/String;

.field strTextView:Landroid/widget/TextView;

.field time:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupViewHolder(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    new-instance v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;-><init>()V

    .line 57
    sget v0, Lcom/android/timezonepicker/R$id;->value:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->strTextView:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
