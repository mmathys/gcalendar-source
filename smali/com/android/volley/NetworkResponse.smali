.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final data:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final networkTimeMs:J

.field public final notModified:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 39
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 40
    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 41
    iput-boolean p4, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 42
    iput-wide p5, p0, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    .line 43
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/16 v2, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    .line 56
    return-void
.end method
