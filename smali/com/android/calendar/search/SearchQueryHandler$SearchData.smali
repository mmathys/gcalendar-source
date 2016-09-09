.class Lcom/android/calendar/search/SearchQueryHandler$SearchData;
.super Ljava/lang/Object;
.source "SearchQueryHandler.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/search/SearchQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchData"
.end annotation


# instance fields
.field private mToken:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchData;->mToken:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/search/SearchQueryHandler$1;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/calendar/search/SearchQueryHandler$SearchData;-><init>()V

    return-void
.end method


# virtual methods
.method public containsDay(I)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public getDebugTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "[2440588-2465067]"

    return-object v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x259d2b

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x253d8c    # 3.419992E-39f

    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchData;->mToken:I

    return v0
.end method

.method public recycle(I)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public setToken(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/android/calendar/search/SearchQueryHandler$SearchData;->mToken:I

    .line 199
    return-void
.end method
