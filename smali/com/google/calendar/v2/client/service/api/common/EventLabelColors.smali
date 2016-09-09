.class public Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;
.super Ljava/lang/Object;
.source "EventLabelColors.java"


# static fields
.field static final INSTANCE:Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;


# instance fields
.field labelColorById:Lcom/google/calendar/v2/common/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/common/BiMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field labelColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/calendar/v2/common/BiMap;->create()Lcom/google/calendar/v2/common/BiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColorById:Lcom/google/calendar/v2/common/BiMap;

    .line 22
    invoke-static {}, Lcom/google/calendar/v2/common/CollectionUtil;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColors:Ljava/util/List;

    .line 33
    const-string v0, "1"

    const-string v1, "a4bdfc"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "2"

    const-string v1, "7ae7bf"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "3"

    const-string v1, "dbadff"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "4"

    const-string v1, "ff887c"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "5"

    const-string v1, "fbd75b"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "6"

    const-string v1, "ffb878"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "7"

    const-string v1, "46d6db"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "8"

    const-string v1, "e1e1e1"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "9"

    const-string v1, "5484ed"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "10"

    const-string v1, "51b749"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "11"

    const-string v1, "dc2127"

    invoke-direct {p0, v0, v1}, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->addLabelColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColors:Ljava/util/List;

    .line 46
    return-void
.end method

.method private addLabelColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColorById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/calendar/v2/common/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public static colorFromId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColorById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method static getTimelyPresets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColors:Ljava/util/List;

    return-object v0
.end method

.method public static idFromColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->INSTANCE:Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/api/common/EventLabelColors;->labelColorById:Lcom/google/calendar/v2/common/BiMap;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/common/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
