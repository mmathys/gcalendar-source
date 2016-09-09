.class public final Lio/grpc/Attributes$Builder;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private product:Lio/grpc/Attributes;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lio/grpc/Attributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Attributes;-><init>(Lio/grpc/Attributes$1;)V

    iput-object v0, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Attributes$1;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lio/grpc/Attributes$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/Attributes;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Already built"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    .line 135
    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key",
            "<TT;>;TT;)",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    # getter for: Lio/grpc/Attributes;->data:Ljava/util/HashMap;
    invoke-static {v0}, Lio/grpc/Attributes;->access$200(Lio/grpc/Attributes;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object p0
.end method

.method public setAll(Lio/grpc/Attributes;)Lio/grpc/Attributes$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes;",
            ")",
            "Lio/grpc/Attributes$Builder;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lio/grpc/Attributes$Builder;->product:Lio/grpc/Attributes;

    # getter for: Lio/grpc/Attributes;->data:Ljava/util/HashMap;
    invoke-static {v0}, Lio/grpc/Attributes;->access$200(Lio/grpc/Attributes;)Ljava/util/HashMap;

    move-result-object v0

    # getter for: Lio/grpc/Attributes;->data:Ljava/util/HashMap;
    invoke-static {p1}, Lio/grpc/Attributes;->access$200(Lio/grpc/Attributes;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 125
    return-object p0
.end method
