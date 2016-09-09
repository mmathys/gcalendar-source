.class abstract Lcom/google/android/calendar/api/ColorClientBase;
.super Ljava/lang/Object;
.source "ColorClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/ColorClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;,
        Lcom/google/android/calendar/api/ColorClientBase$ResultImplBase;
    }
.end annotation


# instance fields
.field private final api:Lcom/google/android/calendar/api/CrudApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            "Lcom/google/android/calendar/api/ColorModifications;",
            "Lcom/google/android/calendar/api/ColorDescriptor;",
            "Lcom/google/android/calendar/api/ColorFilterOptions;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            "Lcom/google/android/calendar/api/ColorModifications;",
            "Lcom/google/android/calendar/api/ColorDescriptor;",
            "Lcom/google/android/calendar/api/ColorFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/CrudApi;

    iput-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase;->api:Lcom/google/android/calendar/api/CrudApi;

    .line 100
    return-void
.end method


# virtual methods
.method protected synchronousList(Lcom/google/android/calendar/api/ColorFilterOptions;)Lcom/google/android/calendar/api/ColorClient$ListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorClientBase;->api:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->list(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/calendar/api/ApiColor;

    .line 115
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v1, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/api/ColorClientBase$ListResultImpl;-><init>(I[Lcom/google/android/calendar/api/ApiColor;)V

    return-object v1
.end method
