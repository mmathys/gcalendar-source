.class public interface abstract Lcom/android/bitmap/RequestKey$Callback;
.super Ljava/lang/Object;
.source "RequestKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/RequestKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# static fields
.field public static final NONE:Lcom/android/bitmap/RequestKey$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/bitmap/RequestKey$Callback$1;

    invoke-direct {v0}, Lcom/android/bitmap/RequestKey$Callback$1;-><init>()V

    sput-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    return-void
.end method


# virtual methods
.method public abstract byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V
.end method
