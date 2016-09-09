.class Lio/grpc/internal/KeepAliveManager$SystemTicker;
.super Lio/grpc/internal/KeepAliveManager$Ticker;
.source "KeepAliveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemTicker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lio/grpc/internal/KeepAliveManager$Ticker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/KeepAliveManager$1;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lio/grpc/internal/KeepAliveManager$SystemTicker;-><init>()V

    return-void
.end method


# virtual methods
.method public read()J
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
