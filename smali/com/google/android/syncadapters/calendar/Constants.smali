.class public interface abstract Lcom/google/android/syncadapters/calendar/Constants;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;


# static fields
.field public static final ERROR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/calendar/builders/MapBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/MapBuilder;-><init>()V

    const/16 v1, 0x190

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "400 Bad Request"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x130

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "304 Not Modified"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x191

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "401 Unauthorized"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x193

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "403 Forbidden"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x194

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "404 Not Found"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x199

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "409 Conflict"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x19a

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "410 Gone"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x19c

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "412 Precondition Failed"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x19e

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "414 Deleted From Server"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x1f4

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "500 Internal Server Error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    const/16 v1, 0x1f7

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "503 Service Unavailable"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/builders/MapBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/MapBuilder;->buildImmutable()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Constants;->ERROR_MAP:Ljava/util/Map;

    .line 75
    return-void
.end method
