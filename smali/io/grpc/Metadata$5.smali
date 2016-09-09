.class Lio/grpc/Metadata$5;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Metadata;->removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lio/grpc/Metadata$MetadataEntry;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/Metadata;

.field final synthetic val$key:Lio/grpc/Metadata$Key;


# direct methods
.method constructor <init>(Lio/grpc/Metadata;Lio/grpc/Metadata$Key;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lio/grpc/Metadata$5;->this$0:Lio/grpc/Metadata;

    iput-object p2, p0, Lio/grpc/Metadata$5;->val$key:Lio/grpc/Metadata$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/grpc/Metadata$MetadataEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$MetadataEntry;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lio/grpc/Metadata$5;->val$key:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata$MetadataEntry;->getParsed(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    check-cast p1, Lio/grpc/Metadata$MetadataEntry;

    invoke-virtual {p0, p1}, Lio/grpc/Metadata$5;->apply(Lio/grpc/Metadata$MetadataEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
