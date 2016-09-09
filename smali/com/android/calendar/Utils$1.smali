.class final Lcom/android/calendar/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)I
    .locals 3

    .prologue
    .line 553
    # getter for: Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;
    invoke-static {}, Lcom/android/calendar/Utils;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    # getter for: Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;
    invoke-static {}, Lcom/android/calendar/Utils;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    :cond_0
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_1
    # getter for: Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;
    invoke-static {}, Lcom/android/calendar/Utils;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 560
    # getter for: Lcom/android/calendar/Utils;->sColorsIndices:Ljava/util/Map;
    invoke-static {}, Lcom/android/calendar/Utils;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    .line 559
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 549
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    check-cast p2, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/Utils$1;->compare(Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    return v0
.end method
