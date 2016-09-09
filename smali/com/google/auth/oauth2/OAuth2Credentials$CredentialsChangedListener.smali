.class public interface abstract Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;
.super Ljava/lang/Object;
.source "OAuth2Credentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CredentialsChangedListener"
.end annotation


# virtual methods
.method public abstract onChanged(Lcom/google/auth/oauth2/OAuth2Credentials;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
