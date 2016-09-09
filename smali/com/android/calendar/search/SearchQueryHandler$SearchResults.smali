.class public Lcom/android/calendar/search/SearchQueryHandler$SearchResults;
.super Ljava/lang/Object;
.source "SearchQueryHandler.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData$EventResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/search/SearchQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResults"
.end annotation


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 136
    if-nez v0, :cond_3

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    .line 148
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v0

    .line 133
    goto :goto_0

    .line 141
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    .line 142
    if-eqz p1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    iget-object v1, p1, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    :cond_4
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    iget-object v1, p2, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    .line 130
    return-void
.end method


# virtual methods
.method public addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->mItems:Ljava/util/List;

    return-object v0
.end method
