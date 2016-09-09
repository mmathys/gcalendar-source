.class final Lcom/google/android/calendar/api/Feature$1;
.super Lcom/google/android/calendar/api/Feature;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/api/Feature;->createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/Feature",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/calendar/api/Feature$1;->val$value:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/Feature;-><init>(Lcom/google/android/calendar/api/Feature$1;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/api/Feature$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
