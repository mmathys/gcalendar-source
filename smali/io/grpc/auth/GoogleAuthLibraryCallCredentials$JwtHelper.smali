.class Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;
.super Ljava/lang/Object;
.source "GoogleAuthLibraryCallCredentials.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/auth/GoogleAuthLibraryCallCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JwtHelper"
.end annotation


# instance fields
.field private final getClientEmail:Ljava/lang/reflect/Method;

.field private final getClientId:Ljava/lang/reflect/Method;

.field private final getPrivateKey:Ljava/lang/reflect/Method;

.field private final getPrivateKeyId:Ljava/lang/reflect/Method;

.field private final getScopes:Ljava/lang/reflect/Method;

.field private final jwtConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/google/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceAccountClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const-class v0, Lcom/google/auth/Credentials;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    .line 224
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    const-string v1, "getScopes"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getScopes:Ljava/lang/reflect/Method;

    .line 225
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    const-string v1, "getClientId"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getClientId:Ljava/lang/reflect/Method;

    .line 226
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    const-string v1, "getClientEmail"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getClientEmail:Ljava/lang/reflect/Method;

    .line 227
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    const-string v1, "getPrivateKey"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getPrivateKey:Ljava/lang/reflect/Method;

    .line 228
    iget-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    const-string v1, "getPrivateKeyId"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getPrivateKeyId:Ljava/lang/reflect/Method;

    .line 229
    const-string v0, "com.google.auth.oauth2.ServiceAccountJwtAccessCredentials"

    invoke-static {v0, v3, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/auth/Credentials;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/security/PrivateKey;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->jwtConstructor:Ljava/lang/reflect/Constructor;

    .line 234
    return-void
.end method


# virtual methods
.method public tryServiceAccountToJwt(Lcom/google/auth/Credentials;)Lcom/google/auth/Credentials;
    .locals 7

    .prologue
    .line 237
    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    .line 256
    :cond_0
    :goto_0
    return-object v1

    .line 241
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->serviceAccountClass:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auth/Credentials;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :try_start_1
    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getScopes:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 243
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 247
    iget-object v2, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->jwtConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getClientId:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getClientEmail:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 249
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getPrivateKey:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 250
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lio/grpc/auth/GoogleAuthLibraryCallCredentials$JwtHelper;->getPrivateKeyId:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 251
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/auth/Credentials;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    .line 254
    :goto_1
    # getter for: Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/auth/GoogleAuthLibraryCallCredentials;->access$300()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed converting service account credential to JWT. This is unexpected"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :catch_1
    move-exception v2

    goto :goto_1
.end method
