.class public interface abstract Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;
.super Ljava/lang/Object;
.source "PlacesConstants.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesUrlConstants;


# static fields
.field public static final PLACE_DETAILS_URL_TEMPLATE:Ljava/lang/String;

.field public static final PLACE_PHOTO_URL_TEMPLATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-string v0, "https://maps.googleapis.com/maps/api/place/details/json?reference=[REFERENCE_ID]&sensor=true&key="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;->PLACE_DETAILS_URL_TEMPLATE:Ljava/lang/String;

    .line 31
    const-string v0, "https://maps.googleapis.com/maps/api/place/photo?photoreference=[PHOTO_REFERENCE]&maxwidth=[WIDTH]&maxheight=[HEIGHT]&sensor=true&key="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;->PLACE_PHOTO_URL_TEMPLATE:Ljava/lang/String;

    .line 31
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
