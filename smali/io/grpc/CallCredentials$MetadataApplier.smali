.class public interface abstract Lio/grpc/CallCredentials$MetadataApplier;
.super Ljava/lang/Object;
.source "CallCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/CallCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetadataApplier"
.end annotation


# virtual methods
.method public abstract apply(Lio/grpc/Metadata;)V
.end method

.method public abstract fail(Lio/grpc/Status;)V
.end method
