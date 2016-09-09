.class Lcom/google/auth/oauth2/DefaultCredentialsProvider;
.super Ljava/lang/Object;
.source "DefaultCredentialsProvider.java"


# instance fields
.field private cachedCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

.field private checkedAppEngine:Z

.field private checkedComputeEngine:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->cachedCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 45
    iput-boolean v1, p0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->checkedAppEngine:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/auth/oauth2/DefaultCredentialsProvider;->checkedComputeEngine:Z

    .line 49
    return-void
.end method
