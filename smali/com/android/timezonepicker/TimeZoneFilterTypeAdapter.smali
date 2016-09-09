.class public Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneFilterTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;,
        Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;,
        Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;,
        Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    }
.end annotation


# instance fields
.field mDummyListener:Landroid/view/View$OnClickListener;

.field private mFilter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

.field private mLiveResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveResultsCount:I

.field private mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/timezonepicker/TimeZoneData;Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    .line 136
    new-instance v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$1;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mDummyListener:Landroid/view/View$OnClickListener;

    .line 90
    iput-object p2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    .line 91
    iput-object p3, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    .line 92
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    return-void
.end method

.method static synthetic access$100(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneData;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mTimeZoneData:Lcom/android/timezonepicker/TimeZoneData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;)Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResultsCount:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;-><init>(Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$1;)V

    iput-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mFilter:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->getItem(I)Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 114
    if-eqz p2, :cond_1

    .line 121
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    .line 123
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 124
    const-string v1, "TimeZoneFilterTypeAdapter"

    iget-object v2, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "getView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mLiveResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;

    .line 129
    iget v2, v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->type:I

    iput v2, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->filterType:I

    .line 130
    iget-object v2, v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->str:Ljava/lang/String;

    .line 131
    iget v2, v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->time:I

    iput v2, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->time:I

    .line 132
    iget-object v0, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->strTextView:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$FilterTypeResult;->constraint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-object p2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/timezonepicker/R$layout;->time_zone_filter_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    invoke-static {p2}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->setupViewHolder(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;

    .line 152
    iget-object v1, p0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->mListener:Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;

    iget v2, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->filterType:I

    iget-object v3, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->str:Ljava/lang/String;

    iget v0, v0, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$ViewHolder;->time:I

    invoke-interface {v1, v2, v3, v0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter$OnSetFilterListener;->onSetFilter(ILjava/lang/String;I)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/timezonepicker/TimeZoneFilterTypeAdapter;->notifyDataSetInvalidated()V

    .line 155
    return-void
.end method
