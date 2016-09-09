.class public Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;
.super Ljava/lang/Object;
.source "CalendarColorPairs.java"


# static fields
.field private static final API_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;

.field static final INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

.field private static final TML_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;


# instance fields
.field apiColorPairById:Lcom/google/calendar/v2/common/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/common/BiMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/calendar/v2/client/service/api/common/ColorPair;",
            ">;"
        }
    .end annotation
.end field

.field private birthdaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

.field private eventsFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

.field private holidaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

.field private tasksFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

.field tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/common/BiMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/calendar/v2/client/service/api/common/ColorPair;",
            ">;"
        }
    .end annotation
.end field

.field tmlColorPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/ColorPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "000000"

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->API_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 21
    const-string v0, "ffffff"

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->TML_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 23
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/calendar/v2/common/BiMap;->create()Lcom/google/calendar/v2/common/BiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->apiColorPairById:Lcom/google/calendar/v2/common/BiMap;

    .line 28
    invoke-static {}, Lcom/google/calendar/v2/common/BiMap;->create()Lcom/google/calendar/v2/common/BiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    .line 30
    invoke-static {}, Lcom/google/calendar/v2/common/CollectionUtil;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairs:Ljava/util/List;

    .line 50
    const-string v0, "3"

    const-string v1, "f83a22"

    const-string v2, "d30600"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "4"

    const-string v1, "fa573c"

    const-string v2, "f05722"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "5"

    const-string v1, "ff7537"

    const-string v2, "e7711b"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "6"

    const-string v1, "ffad46"

    const-string v2, "e49307"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "12"

    const-string v1, "fad165"

    const-string v2, "f1c443"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "11"

    const-string v1, "fbe983"

    const-string v2, "e2cb4c"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "10"

    const-string v1, "b3dc6c"

    const-string v2, "b9c246"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "9"

    const-string v1, "7bd148"

    const-string v2, "65b045"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "8"

    const-string v1, "16a765"

    const-string v2, "0f9d58"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "7"

    const-string v1, "42d692"

    const-string v2, "1a8763"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "13"

    const-string v1, "92e1c0"

    const-string v2, "33b679"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "14"

    const-string v1, "9fe1e7"

    const-string v2, "11a9cc"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "15"

    const-string v1, "9fc6e7"

    const-string v2, "4374e0"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "16"

    const-string v1, "4986e7"

    const-string v2, "3f5ca9"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "17"

    const-string v1, "9a9cff"

    const-string v2, "6f85bf"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "18"

    const-string v1, "b99aff"

    const-string v2, "8496d7"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "24"

    const-string v1, "a47ae2"

    const-string v2, "9e69af"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "23"

    const-string v1, "cd74e6"

    const-string v2, "7e3794"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "22"

    const-string v1, "f691b2"

    const-string v2, "a61d4c"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "21"

    const-string v1, "cca6ac"

    const-string v2, "bc5679"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "2"

    const-string v1, "d06b64"

    const-string v2, "f3737c"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "1"

    const-string v1, "ac725e"

    const-string v2, "795548"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "19"

    const-string v1, "c2c2c2"

    const-string v2, "898984"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "20"

    const-string v1, "cabdbf"

    const-string v2, "a8a19a"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairs:Ljava/util/List;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairs:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->eventsFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 78
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tasksFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 80
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->holidaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 82
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    const-string v1, "19"

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->birthdaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 83
    return-void
.end method

.method private addApiAndTmlColorPairs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 39
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    sget-object v2, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->API_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/ColorPair;-><init>(Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 40
    new-instance v1, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 41
    invoke-static {p3}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    sget-object v3, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->TML_FOREGROUND:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {v1, v2, v3}, Lcom/google/calendar/v2/client/service/api/common/ColorPair;-><init>(Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 42
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->apiColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v2, p1, v0}, Lcom/google/calendar/v2/common/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p1, v1}, Lcom/google/calendar/v2/common/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public static apiFromId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->apiColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method

.method public static apiFromTimely(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->idFromTimely(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->apiFromId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static getFallbackForBirthdays()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->birthdaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method

.method public static getFallbackForEvents()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->eventsFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method

.method public static getFallbackForHolidays()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->holidaysFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method

.method static getFallbackForTasks()Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tasksFallbackColor:Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method

.method static getTimelyPresets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/ColorPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairs:Ljava/util/List;

    return-object v0
.end method

.method public static idFromApi(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->apiColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static idFromTimely(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static timelyFromApi(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->idFromApi(Lcom/google/calendar/v2/client/service/api/common/ColorPair;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->timelyFromId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static timelyFromId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/ColorPair;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/CalendarColorPairs;->tmlColorPairById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    return-object v0
.end method
