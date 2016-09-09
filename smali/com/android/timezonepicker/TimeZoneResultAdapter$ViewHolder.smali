.class Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TimeZoneResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/timezonepicker/TimeZoneResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field location:Landroid/widget/TextView;

.field timeOffset:Landroid/widget/TextView;

.field timeZone:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setupViewHolder(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    new-instance v1, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;-><init>()V

    .line 71
    sget v0, Lcom/android/timezonepicker/R$id;->time_zone:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeZone:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/android/timezonepicker/R$id;->time_offset:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->timeOffset:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/android/timezonepicker/R$id;->location:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/timezonepicker/TimeZoneResultAdapter$ViewHolder;->location:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
