.class final Lcom/android/calendar/newapi/segment/common/ColorPalette$2;
.super Ljava/lang/Object;
.source "ColorPalette.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/newapi/segment/common/ColorPalette;
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
        "Lcom/google/android/calendar/api/ApiColor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/calendar/api/ApiColor;Lcom/google/android/calendar/api/ApiColor;)I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/android/calendar/api/ApiColor;->getPaletteIndex()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 116
    invoke-virtual {p2}, Lcom/google/android/calendar/api/ApiColor;->getPaletteIndex()Lcom/google/android/calendar/api/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 118
    if-nez v0, :cond_1

    .line 119
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :cond_1
    if-nez v1, :cond_2

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/calendar/api/ApiColor;

    check-cast p2, Lcom/google/android/calendar/api/ApiColor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/ColorPalette$2;->compare(Lcom/google/android/calendar/api/ApiColor;Lcom/google/android/calendar/api/ApiColor;)I

    move-result v0

    return v0
.end method
