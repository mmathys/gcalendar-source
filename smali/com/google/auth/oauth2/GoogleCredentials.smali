.class public Lcom/google/auth/oauth2/GoogleCredentials;
.super Lcom/google/auth/oauth2/OAuth2Credentials;
.source "GoogleCredentials.java"


# static fields
.field private static final defaultCredentialsProvider:Lcom/google/auth/oauth2/DefaultCredentialsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;

    invoke-direct {v0}, Lcom/google/auth/oauth2/DefaultCredentialsProvider;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/GoogleCredentials;->defaultCredentialsProvider:Lcom/google/auth/oauth2/DefaultCredentialsProvider;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/AccessToken;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 122
    return-void
.end method
