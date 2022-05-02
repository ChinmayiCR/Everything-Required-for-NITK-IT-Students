.class public interface abstract Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract enableStatLogging(Z)V
.end method

.method public abstract getStatString()Ljava/lang/String;
.end method

.method public abstract recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setNumThreads(I)V
.end method

.method public abstract setUseNNAPI(Z)V
.end method
