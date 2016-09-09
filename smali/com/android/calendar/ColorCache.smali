.class public Lcom/android/calendar/ColorCache;
.super Ljava/lang/Object;
.source "ColorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ColorCache$AccountWithColor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mColorKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/calendar/ColorCache$AccountWithColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/calendar/ColorCache;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ColorCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ColorCache;->mEventColorMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ColorCache;->mColorKeyMap:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public static getColorList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 97
    invoke-static {v3}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromInt(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v1
.end method

.method public static getDecimalColorList(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 106
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->toInt()I

    move-result v0

    aput v0, v2, v1

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getColorForKey(Ljava/lang/Integer;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    .line 118
    if-nez p1, :cond_0

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mColorKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ColorCache$AccountWithColor;

    # getter for: Lcom/android/calendar/ColorCache$AccountWithColor;->mColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {v0}, Lcom/android/calendar/ColorCache$AccountWithColor;->access$000(Lcom/android/calendar/ColorCache$AccountWithColor;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method public getColorKey(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mColorKeyMap:Ljava/util/Map;

    new-instance v1, Lcom/android/calendar/ColorCache$AccountWithColor;

    invoke-direct {v1, p1, p2}, Lcom/android/calendar/ColorCache$AccountWithColor;-><init>(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getColorList(Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mEventColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDecimalColorList(Landroid/accounts/Account;)[I
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/calendar/ColorCache;->getColorList(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/calendar/ColorCache;->TAG:Ljava/lang/String;

    const-string v1, "No colors available for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/calendar/ColorCache;->getDecimalColorList(Ljava/util/List;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public populate(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mEventColorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mColorKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 61
    :cond_2
    new-instance v1, Landroid/accounts/Account;

    const/4 v0, 0x1

    .line 62
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 63
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 65
    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mEventColorMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    if-nez v0, :cond_3

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v3, p0, Lcom/android/calendar/ColorCache;->mEventColorMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/calendar/ColorCache;->mColorKeyMap:Ljava/util/Map;

    new-instance v3, Lcom/android/calendar/ColorCache$AccountWithColor;

    invoke-direct {v3, v1, v2}, Lcom/android/calendar/ColorCache$AccountWithColor;-><init>(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    const/4 v1, 0x4

    .line 73
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 72
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method
